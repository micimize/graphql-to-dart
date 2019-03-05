import "graphql-codegen-core/dist/testing";
import { makeExecutableSchema } from "graphql-tools";
import { readFileSync } from "fs";
import { plugin } from "../dist";
import gql from "graphql-tag";
import { buildClientSchema } from "graphql";

describe("Dart Models", () => {
  const schema = buildClientSchema(
    JSON.parse(readFileSync("./tests/files/schema.json", "utf-8"))
  );
  const exampleOutput = readFileSync("./tests/files/schema.dart", "utf-8");

  it("Should generate simple Query correctly", async () => {
    const query = gql`
      query myFeed {
        feed {
          id
          commentCount
          repository {
            full_name
            html_url
            owner {
              avatar_url
            }
          }
        }
      }
    `;

    const content = await plugin(
      schema,
      [{ filePath: "", content: query }],
      {},
      {
        outputFile: "graphql_schema.dart"
      }
    );

    expect(content).toBeSimilarStringTo(exampleOutput);
  });
});
